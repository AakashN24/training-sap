using catalogService as service from '../../srv/service';
annotate service.Users with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dob',
                Value : dob,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address',
                Value : address,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last Name',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'dob',
            Value : dob,
        },
        {
            $Type : 'UI.DataField',
            Label : 'address',
            Value : address,
        },
    ],
);

