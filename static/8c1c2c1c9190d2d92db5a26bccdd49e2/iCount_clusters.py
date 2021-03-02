from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Icount_Clusters_V0_1_0 = CommandToolBuilder(tool="iCount_clusters", base_command=["iCount", "clusters"], inputs=[ToolInput(tag="in_dist", input_type=Boolean(optional=True), prefix="--dist", doc=InputDocumentation(doc="Distance between two peaks to merge into same cluster (default: 20)")), ToolInput(tag="in_slop", input_type=Boolean(optional=True), prefix="--slop", doc=InputDocumentation(doc="Distance between site and cluster to assign site to cluster (default: 3)")), ToolInput(tag="in_stdout_log", input_type=Boolean(optional=True), prefix="--stdout_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF.")), ToolInput(tag="in_file_log", input_type=Boolean(optional=True), prefix="--file_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF.")), ToolInput(tag="in_file_log_path", input_type=Boolean(optional=True), prefix="--file_logpath", doc=InputDocumentation(doc="Path to log file.")), ToolInput(tag="in_results_file", input_type=Boolean(optional=True), prefix="--results_file", doc=InputDocumentation(doc="File into which to store Metrics.")), ToolInput(tag="in_sites", input_type=String(), position=0, doc=InputDocumentation(doc="Path to input BED6 file with sites")), ToolInput(tag="in_peaks", input_type=String(), position=1, doc=InputDocumentation(doc="Path to input BED6 file with peaks (or clusters)")), ToolInput(tag="in_clusters", input_type=String(), position=2, doc=InputDocumentation(doc="Path to output BED6 file with merged peaks (clusters)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Clusters_V0_1_0().translate("wdl", allow_empty_container=True)

