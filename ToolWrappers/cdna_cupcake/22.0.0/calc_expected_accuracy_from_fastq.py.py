from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Calc_Expected_Accuracy_From_Fastq_Py_V0_1_0 = CommandToolBuilder(tool="calc_expected_accuracy_from_fastq.py", base_command=["calc_expected_accuracy_from_fastq.py"], inputs=[ToolInput(tag="in_qv_trim_five", input_type=Int(optional=True), prefix="--qv_trim_5", doc=InputDocumentation(doc="Ignore length on 5' for QV calculation (default: 100\nbp)")), ToolInput(tag="in_qv_trim_three", input_type=Int(optional=True), prefix="--qv_trim_3", doc=InputDocumentation(doc="Ignore length on 3' for QV calculation (default: 30\nbp)\n")), ToolInput(tag="in_fast_q_filename", input_type=String(), position=0, doc=InputDocumentation(doc="FASTQ filename (ex: lq_isoforms.fastq")), ToolInput(tag="in_output_filename", input_type=String(), position=1, doc=InputDocumentation(doc="Output FASTQ filename"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calc_Expected_Accuracy_From_Fastq_Py_V0_1_0().translate("wdl")

