from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, Float

Purityem_V0_1_0 = CommandToolBuilder(tool="purityEM", base_command=["purityEM"], inputs=[ToolInput(tag="in_output_name_default", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=": the output name; default <stdout>")), ToolInput(tag="in_print_best_model", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": print the best model for each ploidy number")), ToolInput(tag="in_max_it", input_type=Int(optional=True), prefix="--max_it", doc=InputDocumentation(doc=": maximum number of EM iterations; default 100")), ToolInput(tag="in_epsilon", input_type=Float(optional=True), prefix="--epsilon", doc=InputDocumentation(doc=": the convergence criterion; default 1e-6")), ToolInput(tag="in_m_ploidy", input_type=Boolean(optional=True), prefix="--mploidy", doc=InputDocumentation(doc=": specify a rough upper bound of the ploidy number.\nA smaller value (e.g. 4) is suggested as a larger value will make the program quite slow")), ToolInput(tag="in_max_comp", input_type=Boolean(optional=True), prefix="--maxComp", doc=InputDocumentation(doc=": specify the maximum number of component in the mixture of normal model; Default 15\nthis option will overload the option --mploidy; this is the default method")), ToolInput(tag="in_nrs", input_type=Boolean(optional=True), prefix="--nRS", doc=InputDocumentation(doc=": the number of random starting values for the EM algorithm")), ToolInput(tag="in_subsample", input_type=Boolean(optional=True), prefix="--subsample", doc=InputDocumentation(doc=": if specified, subsample 10000 observations (if there are more than 10000 observations) for parameter estimation.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Purityem_V0_1_0().translate("wdl", allow_empty_container=True)

