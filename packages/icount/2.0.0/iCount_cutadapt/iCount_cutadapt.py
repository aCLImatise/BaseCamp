from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Icount_Cutadapt_V0_1_0 = CommandToolBuilder(tool="iCount_cutadapt", base_command=["iCount", "cutadapt"], inputs=[ToolInput(tag="in_qual_trim", input_type=Boolean(optional=True), prefix="--qual_trim", doc=InputDocumentation(doc="Trim low-quality bases before adapter removal (default: None)")), ToolInput(tag="in_minimum_length", input_type=Boolean(optional=True), prefix="--minimum_length", doc=InputDocumentation(doc="Discard trimmed reads that are shorter than `minimum_length` (default: None)")), ToolInput(tag="in_stdout_log", input_type=Boolean(optional=True), prefix="--stdout_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF.")), ToolInput(tag="in_file_log", input_type=Boolean(optional=True), prefix="--file_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF.")), ToolInput(tag="in_file_log_path", input_type=Boolean(optional=True), prefix="--file_logpath", doc=InputDocumentation(doc="Path to log file.")), ToolInput(tag="in_results_file", input_type=Boolean(optional=True), prefix="--results_file", doc=InputDocumentation(doc="File into which to store Metrics.")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc="Input FASTQ file")), ToolInput(tag="in_reads_trimmed", input_type=String(), position=1, doc=InputDocumentation(doc="Output FASTQ file containing trimmed reads")), ToolInput(tag="in_adapter", input_type=String(), position=2, doc=InputDocumentation(doc="Sequence of an adapter ligated to the 3' end"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Cutadapt_V0_1_0().translate("wdl", allow_empty_container=True)

