from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Smudgeplot_Py_Extract_V0_1_0 = CommandToolBuilder(tool="smudgeplot.py_extract", base_command=["smudgeplot.py", "extract"], inputs=[ToolInput(tag="in_coverage_file", input_type=File(optional=True), prefix="--coverageFile", doc=InputDocumentation(doc="coverage file for the kmer pairs")), ToolInput(tag="in_seq_file", input_type=File(optional=True), prefix="--seqFile", doc=InputDocumentation(doc="sequences of the kmer pairs")), ToolInput(tag="in_count_min", input_type=Int(optional=True), prefix="--countMin", doc=InputDocumentation(doc="lower bound of the summed coverage")), ToolInput(tag="in_count_max", input_type=Int(optional=True), prefix="--countMax", doc=InputDocumentation(doc="upper bound of the summed coverage")), ToolInput(tag="in_ratio_min", input_type=Int(optional=True), prefix="--ratioMin", doc=InputDocumentation(doc="lower bound of minor allele ratio")), ToolInput(tag="in_ratio_max", input_type=Int(optional=True), prefix="--ratioMax", doc=InputDocumentation(doc="upper bound of minor allele ratio\n"))], outputs=[], container="quay.io/biocontainers/smudgeplot:0.2.4--py38r40h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smudgeplot_Py_Extract_V0_1_0().translate("wdl")

