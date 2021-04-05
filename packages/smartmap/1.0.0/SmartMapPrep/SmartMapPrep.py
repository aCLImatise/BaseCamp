from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Smartmapprep_V0_1_0 = CommandToolBuilder(tool="SmartMapPrep", base_command=["SmartMapPrep"], inputs=[ToolInput(tag="in_basename_bowtie_index", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="to basename of Bowtie2 index for alignment")), ToolInput(tag="in_prefix_prepended_output", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="prefix prepended to the output files")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="file for read mate 1 (can be gzipped)")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="file for read mate 2 (can be gzipped)")), ToolInput(tag="in_cpu_threads_used", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="of CPU threads to be used for multithreaded alignment (default: 1)")), ToolInput(tag="in_i", input_type=Int(optional=True), prefix="-I", doc=InputDocumentation(doc="insert length (default: 100)")), ToolInput(tag="in_l", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="insert length (default: 250)")), ToolInput(tag="in_number_alignments_reported", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="number of alignments reported (default: 51)")), ToolInput(tag="in_removed_read_names", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="to be removed from read names"))], outputs=[], container="quay.io/biocontainers/smartmap:1.0.0--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smartmapprep_V0_1_0().translate("wdl")

