from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Parse_Mappings_Pl_V0_1_0 = CommandToolBuilder(tool="parse_mappings.pl", base_command=["parse_mappings.pl"], inputs=[ToolInput(tag="in_discard_mappings_higher", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="Discard mappings of edit distance higher than this")), ToolInput(tag="in_discard_mappings_read", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Discard mappings of read queries shorter than this")), ToolInput(tag="in_discard_mappings_longer", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Discard mappings of read queries longer than this")), ToolInput(tag="in_discard_read_queries_not_file", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Discard read queries not in this file")), ToolInput(tag="in_discard_read_queries_in_file", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="Discard read queries in this file")), ToolInput(tag="in_discard_reference_dbs_not_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Discard reference dbs not in this file")), ToolInput(tag="in_discard_reference_dbs_in_file", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="Discard reference dbs in this file")), ToolInput(tag="in_discard_remaining_mappings", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="Discard remaining suboptimal mappings and discard any\nreads that have more remaining mappings than this")), ToolInput(tag="in_remove_unmatched_nts", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="Remove any unmatched nts in the very 3' end")), ToolInput(tag="in_output_progress_standard", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Output progress to standard output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Mappings_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

