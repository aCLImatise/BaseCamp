from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Icount_Mapstar_V0_1_0 = CommandToolBuilder(tool="iCount_mapstar", base_command=["iCount", "mapstar"], inputs=[ToolInput(tag="in_annotation", input_type=Boolean(optional=True), prefix="--annotation", doc=InputDocumentation(doc="GTF annotation needed for mapping to splice-junctions (default: )")), ToolInput(tag="in_multimax", input_type=Boolean(optional=True), prefix="--multimax", doc=InputDocumentation(doc="Number of allowed multiple hits (default: 10)")), ToolInput(tag="in_mismatches", input_type=Boolean(optional=True), prefix="--mismatches", doc=InputDocumentation(doc="Number of allowed mismatches (default: 2)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads that STAR can use for generating index (default: 1)")), ToolInput(tag="in_stdout_log", input_type=Boolean(optional=True), prefix="--stdout_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF.")), ToolInput(tag="in_file_log", input_type=Boolean(optional=True), prefix="--file_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF.")), ToolInput(tag="in_file_log_path", input_type=Boolean(optional=True), prefix="--file_logpath", doc=InputDocumentation(doc="Path to log file.")), ToolInput(tag="in_results_file", input_type=Boolean(optional=True), prefix="--results_file", doc=InputDocumentation(doc="File into which to store Metrics.")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc="Sequencing reads to map to genome")), ToolInput(tag="in_genome_index", input_type=String(), position=1, doc=InputDocumentation(doc="Folder with genome index")), ToolInput(tag="in_out_dir", input_type=String(), position=2, doc=InputDocumentation(doc="Output folder, where to store mapping results"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Mapstar_V0_1_0().translate("wdl", allow_empty_container=True)

