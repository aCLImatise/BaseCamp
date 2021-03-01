from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

F5C_Index_V0_1_0 = CommandToolBuilder(tool="f5c_index", base_command=["f5c", "index"], inputs=[ToolInput(tag="in_path_directory_containing", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="path to the directory containing fast5 files. This option can be given multiple times.")), ToolInput(tag="in_sequencing_summary_file", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="the sequencing summary file")), ToolInput(tag="in_file_containing_paths", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="file containing the paths to the sequencing summary files (one per line)")), ToolInput(tag="in_number_threads_used", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads used for bgzf compression (makes indexing faster)")), ToolInput(tag="in_iop", input_type=Int(optional=True), prefix="--iop", doc=InputDocumentation(doc="number of I/O processes to read fast5 files (makes indexing faster)")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbosity level")), ToolInput(tag="in_reads_dot_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/f5c:0.6--h8b6279f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    F5C_Index_V0_1_0().translate("wdl")

