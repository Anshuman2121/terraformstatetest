# docker_container.web:
resource "docker_container" "web" {
    command           = [
        "nginx",
        "-g",
        "daemon off;",
    ]
    cpu_shares        = 0
    dns               = []
    dns_opts          = []
    dns_search        = []
    entrypoint        = [
        "/docker-entrypoint.sh",
    ]
    env               = [
        "NGINX_VERSION=1.19.1",
        "NJS_VERSION=0.4.2",
        "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
        "PKG_RELEASE=1~buster",
    ]
    group_add         = []
    hostname          = "2df8ae1397b8"
    image             = "sha256:08393e824c32d456ff69aec72c64d1ab63fecdad060ab0e8d3d42640fc3d64c5"
    ipc_mode          = "private"
    log_driver        = "json-file"
    log_opts          = {}
    max_retry_count   = 0
    memory            = 0
    memory_swap       = 0
    name              = "hashicorp-learn"
    network_mode      = "default"
    privileged        = false
    publish_all_ports = false
    read_only         = false
    restart           = "no"
    rm                = false
    shm_size          = 64
    sysctls           = {}
    tmpfs             = {}

    labels {
        label = "maintainer"
        value = "NGINX Docker Maintainers <docker-maint@nginx.com>"
    }

    ports {
        external = 8081
        internal = 80
    }
}
