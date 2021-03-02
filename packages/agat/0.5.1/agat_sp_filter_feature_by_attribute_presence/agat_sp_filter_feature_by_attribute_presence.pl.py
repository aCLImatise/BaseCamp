from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Agat_Sp_Filter_Feature_By_Attribute_Presence_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_filter_feature_by_attribute_presence.pl", base_command=["agat_sp_filter_feature_by_attribute_presence.pl"], inputs=[ToolInput(tag="in_ref_file", input_type=File(optional=True), prefix="--reffile", doc=InputDocumentation(doc="Input GFF3 file that will be read")), ToolInput(tag="in_type", input_type=Int(optional=True), prefix="--type", doc=InputDocumentation(doc="primary tag option, case insensitive, list. Allow to specied the\nfeature types that will be handled. You can specified a specific\nfeature by given its primary tag name (column 3) as: cds, Gene,\nMrNa You can specify directly all the feature of a particular\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\ndefault all feature are taking into account. fill the option by\nthe value 'all' will have the same behaviour.")), ToolInput(tag="in_attribute", input_type=Boolean(optional=True), prefix="--attribute", doc=InputDocumentation(doc="String - Attributes tag specified will be used to filter the\nfeature type (feature type can also be specified by the option\n-p). List of attribute tags must be coma separated.")), ToolInput(tag="in_flip", input_type=Boolean(optional=True), prefix="--flip", doc=InputDocumentation(doc="BOLEAN - In order to flip the test and keep features that do\nhave the attribute and filter those without")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_sp_select_feature_by_attribute_presence_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Filter_Feature_By_Attribute_Presence_Pl_V0_1_0().translate("wdl")

