from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Htsbox_Tabix_V0_1_0 = CommandToolBuilder(tool="htsbox_tabix", base_command=["htsbox", "tabix"], inputs=[ToolInput(tag="in_preset_gff_bed", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="preset: gff, bed, sam or vcf [gff]")), ToolInput(tag="in_column_number_sequence", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="column number for sequence names (suppressed by -p) [1]")), ToolInput(tag="in_column_number_region", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="column number for region start [4]")), ToolInput(tag="in_column_number_set", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="column number for region end (if no end, set INT to -b) [5]")), ToolInput(tag="in_specify_coordinates_zerobased", input_type=Boolean(optional=True), prefix="-0", doc=InputDocumentation(doc="specify coordinates are zero-based")), ToolInput(tag="in_skip_first_lines", input_type=Int(optional=True), prefix="-S", doc=InputDocumentation(doc="skip first INT lines [0]")), ToolInput(tag="in_skip_lines_starting", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="skip lines starting with CHAR [null]")), ToolInput(tag="in_print_all_records", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="print all records")), ToolInput(tag="in_force_overwrite_index", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="force to overwrite existing index")), ToolInput(tag="in_set_minimal_size", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="set the minimal interval size to 1<<INT; 0 for the old tabix index [0]")), ToolInput(tag="in_tab_ix", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_do_tgz", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Tabix_V0_1_0().translate("wdl", allow_empty_container=True)

