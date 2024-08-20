par(mfcol=c(1,2))
boxplot(sos$Net.Stipend[which(sos$Net.Stipend > 0)] ~ sos$Program[which(sos$Net.Stipend > 0)],
        ylim=c(
          min(
            c(sos$Net.Stipend.Int,us.data$Annual.guaranteed.salary*us.to.cad,uk.stipend
            ), 
            na.rm=T)
          ,max(
            c(sos$Net.Stipend.Int,us.data$Annual.guaranteed.salary*us.to.cad,uk.stipend), 
            na.rm=T)
        )
        )
boxplot(sos$Net.Stipend.Int[which(sos$Net.Stipend > 0)] ~ sos$Program[which(sos$Net.Stipend > 0)],
        ylim=c(
          min(
            c(sos$Net.Stipend.Int,us.data$Annual.guaranteed.salary*us.to.cad,uk.stipend
            ), 
            na.rm=T)
          ,max(
            c(sos$Net.Stipend.Int,us.data$Annual.guaranteed.salary*us.to.cad,uk.stipend), 
            na.rm=T)
        )
)

mean(sos$Total.Domestic.Fees[which(sos$Net.Stipend > 0)]/sos$Gross.Stipend[which(sos$Net.Stipend > 0)]*100,
     na.rm=T)
median(sos$Total.Domestic.Fees[which(sos$Net.Stipend > 0)]/sos$Gross.Stipend[which(sos$Net.Stipend > 0)]*100,
     na.rm=T)

mean(sos$Total.Int.Fees[which(sos$Net.Stipend > 0)]/sos$Gross.Stipend.International[which(sos$Net.Stipend > 0)]*100,
     na.rm=T)
median(sos$Total.Int.Fees[which(sos$Net.Stipend > 0)]/sos$Gross.Stipend.International[which(sos$Net.Stipend > 0)]*100,
       na.rm=T)