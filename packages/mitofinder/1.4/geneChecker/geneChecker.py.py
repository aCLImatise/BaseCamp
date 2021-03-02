from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Genechecker_Py_V0_1_0 = CommandToolBuilder(tool="geneChecker.py", base_command=["geneChecker.py"], inputs=[ToolInput(tag="in_genbank_reference", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_organism_type", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mitofinder:1.4--py27h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genechecker_Py_V0_1_0().translate("wdl")

