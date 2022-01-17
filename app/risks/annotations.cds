using RiskService as service from '../../srv/risk-service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'owner',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Priority',
            Value : prio,
            Criticality : criticality,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impact',
            Value : impact,
            Criticality : criticality,
        },
        
    ]
);
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Priority',
                Value : prio,
                Criticality : criticality
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impact',
                Value : impact,
                Criticality : criticality
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
            
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
