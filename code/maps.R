library(ggplot2)
library(viridis)
library(sf)
br<-st_read("r1.shp")

br<- filter(br, !Riqueza %in% NA)

br2 <- st_read("Costello_equalarea.shp")



pdf("fig1.pdf", height = 4000, width = 7000)

ggplot() +
  geom_sf(data = br2) +
  geom_sf(data = br,aes(fill = Riqueza, lwd = NA)) +
  scale_fill_viridis() +
  theme_bw()+
  labs(fill = "Observed\nrichness") +
  theme(axis.text.x =  element_blank(),
        axis.text.y = element_blank()) +
  theme(
    panel.background = element_blank(),  # Sin fondo en el panel interior
    panel.grid.major = element_blank(),  # Líneas exteriores sólidas y negras
    panel.grid.minor = element_blank()) +
  theme(legend.position = "bottom", legend.justification = "center")

ggsave("Fig1.pdf")

dev.off()


### 2####
br<-st_read("capas/r1.shp")

br<- filter(br, !Riqueza2 %in% NA)

br2 <- st_read("shape/Costello_equalarea.shp")



png("fig2.png", height = 4000, width = 7000,
    res = 800)
ggplot()+
  geom_sf(data = br2, aes(fil = NA))+
  geom_sf(data = br,aes(fill = Riqueza2, lwd = NA))+
  scale_fill_viridis() +
  theme_bw()+
  labs(fill = "Estimated\nrichness")+
  theme(axis.text.x =  element_blank(),
        axis.text.y = element_blank())+
  theme(legend.position = "bottom",
        legend.justification = "center")+  
  theme(
    panel.background = element_blank(),  # Sin fondo en el panel interior
    panel.grid.major = element_blank(),  # Líneas exteriores sólidas y negras
    panel.grid.minor = element_blank())  # Sin líneas interiores)

dev.off()

### 3 ####
br<-st_read("capas/r1.shp")


br<- filter(br, !Coef_1 %in% NA)


br2 <- st_read("shape/Costello_equalarea.shp")



png("fig3.png", height = 4000, width = 7000,
    res = 800)
ggplot()+
  geom_sf(data = br2, aes(fil = NA))+
  geom_sf(data = br,aes(fill = Coef_1, lwd = NA))+
  scale_fill_viridis() +
  theme_bw()+
  labs(fill = "SRI")+
  theme(axis.text.x =  element_blank(),
        axis.text.y = element_blank())+
  theme(legend.position = "bottom",
        legend.justification = "center")+  
  theme(
    panel.background = element_blank(),  # Sin fondo en el panel interior
    panel.grid.major = element_blank(),  # Líneas exteriores sólidas y negras
    panel.grid.minor = element_blank())  # Sin líneas interiores)

dev.off()

