from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Icount_Annotate_V0_1_0 = CommandToolBuilder(tool="iCount_annotate", base_command=["iCount", "annotate"], inputs=[ToolInput(tag="in_subtype", input_type=Boolean(optional=True), prefix="--subtype", doc=InputDocumentation(doc="Subtype (default: biotype)")), ToolInput(tag="in_excluded_types_default", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[ ...], --excluded_types  [ ...]\nExcluded types (default: None)")), ToolInput(tag="in_stdout_log", input_type=Boolean(optional=True), prefix="--stdout_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF.")), ToolInput(tag="in_file_log", input_type=Boolean(optional=True), prefix="--file_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF.")), ToolInput(tag="in_file_log_path", input_type=Boolean(optional=True), prefix="--file_logpath", doc=InputDocumentation(doc="Path to log file.")), ToolInput(tag="in_results_file", input_type=Boolean(optional=True), prefix="--results_file", doc=InputDocumentation(doc="File into which to store Metrics.")), ToolInput(tag="in_annotation", input_type=String(), position=0, doc=InputDocumentation(doc="Path to annotation file (should be GTF and include `subtype` attribute)")), ToolInput(tag="in_sites", input_type=String(), position=1, doc=InputDocumentation(doc="Path to input BED6 file listing all cross-linked sites")), ToolInput(tag="in_sites_annotated", input_type=String(), position=2, doc=InputDocumentation(doc="Path to output BED6 file listing annotated cross-linked sites"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

