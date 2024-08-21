clust <- makeCluster(2)


glmm.net <- glmm(Net.Stipend ~ 0 + University.Endowment..Millions.of.Dollars., 
            random = list(~ 0 + Example.Department,    ~ 0 + University), 
            varcomps.names = c('Physics',"Biological Sciences - Ecology"), 
            data = sos,
            family.glmm = bernoulli.glmm, 
            m = 10^4, 
            debug = TRUE, 
            cluster = clust)
stopCluster(clust)

sos[which(sos$Net.Stipend > 0),]->sos.trim

as.factor(sos$University)->sos$University

as.factor(sos$Example.Department)->sos$Example.Department


mp1 <- glmer(Net.Stipend ~ 
               University.Endowment..Millions.of.Dollars. + 
               Example.Department + 
                (1|University), 
             data = sos.trim, 
             family = "binomial")
