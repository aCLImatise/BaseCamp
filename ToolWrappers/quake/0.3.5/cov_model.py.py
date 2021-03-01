from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Cov_Model_Py_V0_1_0 = CommandToolBuilder(tool="cov_model.py", base_command=["cov_model.py"], inputs=[ToolInput(tag="in_int", input_type=Boolean(optional=True), prefix="--int", doc=InputDocumentation(doc="Kmers were counted as integers w/o the use of quality values\n[default: False]")), ToolInput(tag="in_ratio", input_type=Int(optional=True), prefix="--ratio", doc=InputDocumentation(doc="Likelihood ratio to set trusted/untrusted cutoff [default:\n200]")), ToolInput(tag="in_no_sample", input_type=Boolean(optional=True), prefix="--no_sample", doc=InputDocumentation(doc="Do not sample kmer coverages into kmers.txt because its\nalready done [default: False]\n")), ToolInput(tag="in_counts_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cov_Model_Py_V0_1_0().translate("wdl", allow_empty_container=True)

