from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Gff_To_Bed_Sh_V0_1_0 = CommandToolBuilder(tool="gff_to_bed.sh", base_command=["gff_to_bed.sh"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file")), ToolInput(tag="in_directory_optional_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional). By default the file is placed in the same location as input")), ToolInput(tag="in_supplied_word_cds", input_type=String(optional=True), prefix="-C", doc=InputDocumentation(doc="a supplied word in cds")), ToolInput(tag="in_locus_tag_cds", input_type=String(optional=True), prefix="-L", doc=InputDocumentation(doc="locus tag in cds")), ToolInput(tag="in_chraracter_delimiter_default", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="chraracter delimiter, default '_'")), ToolInput(tag="in_field_retrieve_lleft", input_type=String(optional=True), prefix="-Q", doc=InputDocumentation(doc="field to retrieve (l=left, r=right), default right")), ToolInput(tag="in_mode_remove_duplicates", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="mode. Remove duplicates")), ToolInput(tag="in_ad_end_outputted", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="to ad at the end of the outputted file")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff_To_Bed_Sh_V0_1_0().translate("wdl")

