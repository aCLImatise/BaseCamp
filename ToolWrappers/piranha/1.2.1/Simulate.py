from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Simulate_V0_1_0 = CommandToolBuilder(tool="Simulate", base_command=["Simulate"], inputs=[ToolInput(tag="in_distribution", input_type=Boolean(optional=True), prefix="-distribution", doc=InputDocumentation(doc="what kind of distribution to use for generating read\ncounts? Currently supports Poisson, NegativeBinomial,\nZeroTruncatedPoisson,\nZeroTruncatedNegativeBinomial, PoissonRegression,\nNegativeBinomialRegression,\nZeroTruncatedPoissonRegression,\nZeroTruncatedNegativeBinomialRegression")), ToolInput(tag="in_numpoints", input_type=Boolean(optional=True), prefix="-numPoints", doc=InputDocumentation(doc="number of locations with at least a single read mapping.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-VERBOSE", doc=InputDocumentation(doc="output additional messages about run to stderr if set")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="-seed", doc=InputDocumentation(doc="seed (positive integer) for random numbers (defaults to\nsystem time)")), ToolInput(tag="in_count_filename", input_type=Boolean(optional=True), prefix="-countFilename", doc=InputDocumentation(doc="filename to write counts to")), ToolInput(tag="in_cov_filename", input_type=Boolean(optional=True), prefix="-covFilename", doc=InputDocumentation(doc="filename(s) to write covariates to (if you have more than\n1, wrap in quotes)")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="-format", doc=InputDocumentation(doc="format for the counts file. Options are BED_BINNED\n(default), BED_UNBINNED")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simulate_V0_1_0().translate("wdl", allow_empty_container=True)

