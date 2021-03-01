from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Retest_V0_1_0 = CommandToolBuilder(tool="retest", base_command=["retest"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="increase output verbosity and perform additional")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="test local directory scripts instead of pip installed")), ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="--minscore", doc=InputDocumentation(doc="minimum score/confidence of the classification of a\nread to pass the quality filter; 35 by default")), ToolInput(tag="in_min_tax_a", input_type=Boolean(optional=True), prefix="--mintaxa", doc=InputDocumentation(doc="perform additional tests for mintaxa dependency")), ToolInput(tag="in_roc", input_type=Boolean(optional=True), prefix="--roc", doc=InputDocumentation(doc="perform additional tests and get ROC figures")), ToolInput(tag="in_skip", input_type=Boolean(optional=True), prefix="--skip", doc=InputDocumentation(doc="skip the recentrifuge calls and just load the results\nto plot ROC figure by mintaxa (results should be\navailable)")), ToolInput(tag="in_strain", input_type=Boolean(optional=True), prefix="--strain", doc=InputDocumentation(doc="set this same flag in rcf [experimental feature]")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_checks", input_type=String(), position=0, doc=InputDocumentation(doc="-i, --ignore          continue testing even if errors arise"))], outputs=[], container="quay.io/biocontainers/recentrifuge:1.3.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Retest_V0_1_0().translate("wdl")

