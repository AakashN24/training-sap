using catalogService as service from '../../srv/service';

annotate service.Users with @(
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Value: firstName,
        },
        {
            $Type: 'UI.DataField',
            Value: lastName,
        },
        {
            $Type: 'UI.DataField',
            Value: dob,
        },
        {
            $Type: 'UI.DataField',
            Value: address,
        },
    ],

    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                // Label: 'firstName',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: '{i18n>lastName}',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'dob',
                Value: dob,
            },
            {
                $Type: 'UI.DataField',
                Label: 'address',
                Value: address,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
);
