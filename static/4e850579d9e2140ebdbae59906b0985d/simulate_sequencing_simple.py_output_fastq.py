from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Simulate_Sequencing_Simple_Py_Output_Fastq_V0_1_0 = CommandToolBuilder(tool="simulate_sequencing_simple.py_output_fastq", base_command=["simulate_sequencing_simple.py", "output_fastq"], inputs=[ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_simulate_sequencing_simple_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simulate_Sequencing_Simple_Py_Output_Fastq_V0_1_0().translate("wdl")

