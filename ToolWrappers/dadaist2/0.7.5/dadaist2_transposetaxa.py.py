from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Dadaist2_Transposetaxa_Py_V0_1_0 = CommandToolBuilder(tool="dadaist2_transposetaxa.py", base_command=["dadaist2-transposetaxa.py"], inputs=[ToolInput(tag="in_min_sum", input_type=Int(optional=True), prefix="--minsum", doc=InputDocumentation(doc="Minimum sum of abundances of a taxon rank")), ToolInput(tag="in_top_tax_a", input_type=String(optional=True), prefix="--toptaxa", doc=InputDocumentation(doc="Print top N taxa in each sample, and collapse the\nothers in 'Other'.")), ToolInput(tag="in_global_top", input_type=Boolean(optional=True), prefix="--global-top", doc=InputDocumentation(doc="When using toptaxa, print the global top N taxa")), ToolInput(tag="in_other_label", input_type=String(optional=True), prefix="--other-label", doc=InputDocumentation(doc="Name for the new category for unclassified counts\n"))], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Transposetaxa_Py_V0_1_0().translate("wdl")

