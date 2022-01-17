using {sap.ui.riskmanagement as risk} from '../db/schema';

@path : 'service/risk'
service RiskService {
    entity Risks @(restrict : [
        {
            grant : ['Read'],
            to    : ['RiskViewer']
        },
        {
            grant : ['*'],
            to    : ['RiskManager']
        }
    ]) as projection on risk.Risks;

    annotate Risks with @odata.draft.enabled;

    entity Mitigations @(restrict : [
        {
            grant : ['Read'],
            to    : ['RiskViewer']
        },
        {
            grant : ['*'],
            to    : ['RiskManager']
        }
    ]) as projection on risk.Mitigations;

    annotate Mitigations with @odata.draft.enabled;
//entity BusinessPartner as projection on risk.BusinessPartners;
}
