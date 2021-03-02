from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Tabix_V0_1_0 = CommandToolBuilder(tool="tabix", base_command=["tabix"], inputs=[ToolInput(tag="in_preset_gff_bed", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="preset: gff, bed, sam, vcf, psltbl [gff]")), ToolInput(tag="in_sequence_name_column", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="sequence name column [1]")), ToolInput(tag="in_start_column", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="start column [4]")), ToolInput(tag="in_end_column_be", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="end column; can be identical to '-b' [5]")), ToolInput(tag="in_skip_first_lines", input_type=Int(optional=True), prefix="-S", doc=InputDocumentation(doc="skip first INT lines [0]")), ToolInput(tag="in_symbol_commentmeta_lines", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="symbol for comment/meta lines [#]")), ToolInput(tag="in_replace_header_content", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="replace the header with the content of FILE [null]")), ToolInput(tag="in_region_bed_file", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="region1 is a BED file (entire file will be read)")), ToolInput(tag="in_zerobased_coordinate", input_type=Boolean(optional=True), prefix="-0", doc=InputDocumentation(doc="zero-based coordinate")), ToolInput(tag="in_print_only_lines", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="print only the header lines")), ToolInput(tag="in_list_chromosome_names", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="list chromosome names")), ToolInput(tag="in_force_overwrite_index", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="force to overwrite the index")), ToolInput(tag="in_indottabdotbgz", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tabix_V0_1_0().translate("wdl", allow_empty_container=True)

