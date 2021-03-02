from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Icount_Annotation_V0_1_0 = CommandToolBuilder(tool="iCount_annotation", base_command=["iCount", "annotation"], inputs=[ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="--release", doc=InputDocumentation(doc="Release number. Only ENSEMBL releases 59-88 are available (default: 88)")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Download to this directory (if not given, current working directory) (default: None)")), ToolInput(tag="in_annotation", input_type=Boolean(optional=True), prefix="--annotation", doc=InputDocumentation(doc="Annotation filename (must have .gz file extension). If not given,\nspecies.release.gtf.gz is used. If annotation is provided as absolute\npath, value of out_dir parameter is ignored and file is saved to given\nabsolute path (default: None)")), ToolInput(tag="in_stdout_log", input_type=Boolean(optional=True), prefix="--stdout_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF.")), ToolInput(tag="in_file_log", input_type=Boolean(optional=True), prefix="--file_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF.")), ToolInput(tag="in_file_log_path", input_type=Boolean(optional=True), prefix="--file_logpath", doc=InputDocumentation(doc="Path to log file.")), ToolInput(tag="in_results_file", input_type=Boolean(optional=True), prefix="--results_file", doc=InputDocumentation(doc="File into which to store Metrics.")), ToolInput(tag="in_species", input_type=String(), position=0, doc=InputDocumentation(doc="Species latin name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Annotation_V0_1_0().translate("wdl", allow_empty_container=True)

