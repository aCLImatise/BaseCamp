from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, Boolean, String

Mglex_Cli_Transform_V0_1_0 = CommandToolBuilder(tool="mglex_cli_transform", base_command=["mglex-cli", "transform"], inputs=[ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="Likelihood matrix; default standard input")), ToolInput(tag="in_precision", input_type=Int(optional=True), prefix="--precision", doc=InputDocumentation(doc="Output precision; default 2")), ToolInput(tag="in_beta", input_type=Float(optional=True), prefix="--beta", doc=InputDocumentation(doc="Beta correction factor (e.g. determined via MSE evaluation); default 1.0")), ToolInput(tag="in_raw_probability", input_type=Boolean(optional=True), prefix="--raw-probability", doc=InputDocumentation(doc="Show output in normal representation (small number become zero)")), ToolInput(tag="in_maximum_likelihood", input_type=Boolean(optional=True), prefix="--maximum-likelihood", doc=InputDocumentation(doc="Give only the class(es) with the maximum likelihood a non-zero probability")), ToolInput(tag="in_posterior", input_type=Boolean(optional=True), prefix="--posterior", doc=InputDocumentation(doc="Normalize the likelihood values over classes (uniform class prior)")), ToolInput(tag="in_posterior_ratio", input_type=Boolean(optional=True), prefix="--posterior-ratio", doc=InputDocumentation(doc="Divide all likelihoods by the maximum likelihood")), ToolInput(tag="in_logarithm", input_type=Boolean(optional=True), prefix="--logarithm", doc=InputDocumentation(doc="Convert from simple to logarithmic format")), ToolInput(tag="in_class_index", input_type=Float(optional=True), prefix="--class-index", doc=InputDocumentation(doc="Report only class indices (one-based) with likelihoods above threshold; default 1.0")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_transform", input_type=String(), position=0, doc=InputDocumentation(doc="[--data <file>] [--beta <float> --precision <int>]\n[--logarithm|--maximum-likelihood|--posterior|--posterior-ratio|--class-index <float>]\n[--raw-probability]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglex_Cli_Transform_V0_1_0().translate("wdl", allow_empty_container=True)

