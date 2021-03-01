from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Bioformats_Gff2Bed_V0_1_0 = CommandToolBuilder(tool="bioformats_gff2bed", base_command=["bioformats", "gff2bed"], inputs=[ToolInput(tag="in_attributes_include_output", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="[ATTRIBUTES [ATTRIBUTES ...]], --attributes [ATTRIBUTES [ATTRIBUTES ...]]\nattributes to include to the output BED file (default:\nNone)")), ToolInput(tag="in_name_tag", input_type=String(optional=True), prefix="--name_tag", doc=InputDocumentation(doc="an attribute tag of a feature name (default: None)")), ToolInput(tag="in_missing_value", input_type=String(optional=True), prefix="--missing_value", doc=InputDocumentation(doc="the missing tag value (default: NA)")), ToolInput(tag="in_genes", input_type=File(optional=True), prefix="--genes", doc=InputDocumentation(doc="output a BED12 file of genes (default: False)")), ToolInput(tag="in_parent_tag", input_type=String(optional=True), prefix="--parent_tag", doc=InputDocumentation(doc="an attribute tag of exon genes (default: Parent)")), ToolInput(tag="in_no_order_check", input_type=Boolean(optional=True), prefix="--no_order_check", doc=InputDocumentation(doc="do not check the order of GFF3 file records (default:\nFalse)\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_file", input_type=String(), position=0, doc=InputDocumentation(doc="a GFF3 file")), ToolInput(tag="in_type", input_type=String(), position=1, doc=InputDocumentation(doc="type of features to be processed")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc="the output file in the BED format"))], outputs=[ToolOutput(tag="out_attributes_include_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_attributes_include_output", type_hint=File()), doc=OutputDocumentation(doc="[ATTRIBUTES [ATTRIBUTES ...]], --attributes [ATTRIBUTES [ATTRIBUTES ...]]\nattributes to include to the output BED file (default:\nNone)")), ToolOutput(tag="out_genes", output_type=File(optional=True), selector=InputSelector(input_to_select="in_genes", type_hint=File()), doc=OutputDocumentation(doc="output a BED12 file of genes (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Gff2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

