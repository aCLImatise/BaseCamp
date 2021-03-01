from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Gff3_Merge_V0_1_0 = CommandToolBuilder(tool="gff3_merge", base_command=["gff3_merge"], inputs=[ToolInput(tag="in_location_log_file", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="location of the MAKER datastore index log file.")), ToolInput(tag="in_base_name_output", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="base name for the output files.")), ToolInput(tag="in_stdout_for_output", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="STDOUT for output.")), ToolInput(tag="in_write_maker_models", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="write MAKER gene models to the file, and ignore evidence.")), ToolInput(tag="in_print_fasta_sequence", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="not print fasta sequence in footer")), ToolInput(tag="in_legacy_annotation_sets", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="legacy annotation sets (ignores already having seen\nfeatures more than once for the same contig)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff3_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

