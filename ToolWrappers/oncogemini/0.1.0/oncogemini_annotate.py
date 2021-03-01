from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Int, Boolean

Oncogemini_Annotate_V0_1_0 = CommandToolBuilder(tool="oncogemini_annotate", base_command=["oncogemini", "annotate"], inputs=[ToolInput(tag="in_tabixed_bed_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="The TABIX'ed BED file containing the annotations")), ToolInput(tag="in_names_bed_columns", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="The name(s) of the BED column(s) to be added to the\nvariant table.If the input file is a VCF, then this is\nthe name of the info field to pull.")), ToolInput(tag="in_how_annotation_file", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="How should the annotation file be used? (def. extract)")), ToolInput(tag="in_columns_extract_information", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="Column(s) to extract information from for list\nannotations.If the input is VCF, then this defaults to\nthe fields specified in `-c`.")), ToolInput(tag="in_what_data_types", input_type=Float(optional=True), prefix="-t", doc=InputDocumentation(doc="What data type(s) should be used to represent the new\nvalues in the database? Any of {integer, float, text}")), ToolInput(tag="in_operations_apply_values", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Operation(s) to apply to the extract column values in\nthe event that a variant overlaps multiple annotations\nin your annotation file (-f).Any of {sum, mean,\nmedian, min, max, mode, list, uniq_list, first, last}")), ToolInput(tag="in_region_only", input_type=Boolean(optional=True), prefix="--region-only", doc=InputDocumentation(doc="If set, only region coordinates will be considered\nwhen annotating variants.The default is to annotate\nusing region coordinates as well as REF and ALT\nvariant valuesThis option is only valid if annotation\nis a VCF file\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

