from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Mash_Screen_V0_1_0 = CommandToolBuilder(tool="mash_screen", base_command=["mash", "screen"], inputs=[ToolInput(tag="in_parallelism_many_threads", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Parallelism. This many threads will be spawned for processing. [1]")), ToolInput(tag="in_winnertakesall_strategy_willbe", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="Winner-takes-all strategy for identity estimates. After counting\nhashes for each query, hashes that appear in multiple queries will\nbe removed from all except the one with the best identity (ties\nbroken by larger query), and other identities will be reduced. This\nremoves output redundancy, providing a rough compositional outline.")), ToolInput(tag="in_minimum_identity_report", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="Minimum identity to report. Inclusive unless set to zero, in which\ncase only identities greater than zero (i.e. with at least one\nshared hash) will be reported. Set to -1 to output everything.\n(-1-1) [0]")), ToolInput(tag="in_maximum_pvalue_report", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Maximum p-value to report. (0-1) [1.0]")), ToolInput(tag="in_option", input_type=String(), position=0, doc=InputDocumentation(doc="Description (range) [default]"))], outputs=[], container="quay.io/biocontainers/mash:2.3--ha61e061_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mash_Screen_V0_1_0().translate("wdl")

