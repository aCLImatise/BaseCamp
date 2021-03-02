from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Snp_Based_Classifier_Py_V0_1_0 = CommandToolBuilder(tool="snp_based_classifier.py", base_command=["snp_based_classifier.py"], inputs=[ToolInput(tag="in_defining_snps", input_type=File(optional=True), prefix="--defining-snps", doc=InputDocumentation(doc="A fasta file containing the query sequences"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snp_Based_Classifier_Py_V0_1_0().translate("wdl", allow_empty_container=True)

