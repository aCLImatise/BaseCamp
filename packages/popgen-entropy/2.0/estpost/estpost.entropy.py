from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Estpost_Entropy_V0_1_0 = CommandToolBuilder(tool="estpost.entropy", base_command=["estpost.entropy"], inputs=[ToolInput(tag="in_outfile", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Outfile [default = postout.txt]")), ToolInput(tag="in_name_summarize_eg", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Name of parameter to summarize, e.g., 'q'")), ToolInput(tag="in_credible_interval_calculate", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Credible interval to calculate [default = 0.95]")), ToolInput(tag="in_number_additinal_mcmc", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Number of additinal MCMC samples to discard for burn-in [default = 0]")), ToolInput(tag="in_summary_perform_estimates", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Which summary to perform: 0 = posterior estimates and credible intervals\n1 = histogram of posterior samples\n2 = convert to plain text\n3 = calculate WAIC\n4 = MCMC diagnostics")), ToolInput(tag="in_display_estpostentropy_software", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display estpost.entropy software version")), ToolInput(tag="in_in_file_one_dot_hdf_five", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_file_two_dot_hdf_five", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Estpost_Entropy_V0_1_0().translate("wdl", allow_empty_container=True)

