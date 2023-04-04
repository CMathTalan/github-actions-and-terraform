# company
variable "company" {
  type = string
  description = "défini le nom de la company"
  default = "framleueul"
}

# environment
variable "environment" {
  type = string
  description = "défini l'environnement à construire"
  default = "production"
}

#azure region
variable "location" {
    type = string
    description = "region ou créer les ressources"
    default = "West Europe"
}