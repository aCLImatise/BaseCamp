from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Icount_Genome_V0_1_0 = CommandToolBuilder(tool="iCount_genome", base_command=["iCount", "genome"], inputs=[ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="--release", doc=InputDocumentation(doc="Release number. Only ENSEMBL releases 59-88 are available (default: 88)")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Download to this directory (if not given, current working directory) (default: None)")), ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome filename (must have .gz file extension). If not given,\nspecies.release.fa.gz is used. If genome is provided as absolute path,\nvalue of out_dir parameter is ignored and file is saved to given\nabsolute path (default: None)")), ToolInput(tag="in_chromosomes", input_type=Boolean(optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="[ ...]\nIf given, do not download the whole genome, but listed\nchromosomes only. Chromosomes can be given as strings or integers (default: None)")), ToolInput(tag="in_stdout_log", input_type=Boolean(optional=True), prefix="--stdout_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF.")), ToolInput(tag="in_file_log", input_type=Boolean(optional=True), prefix="--file_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF.")), ToolInput(tag="in_file_log_path", input_type=Boolean(optional=True), prefix="--file_logpath", doc=InputDocumentation(doc="Path to log file.")), ToolInput(tag="in_results_file", input_type=Boolean(optional=True), prefix="--results_file", doc=InputDocumentation(doc="File into which to store Metrics."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

