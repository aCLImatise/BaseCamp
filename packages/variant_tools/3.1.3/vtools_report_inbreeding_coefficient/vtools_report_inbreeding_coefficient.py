from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vtools_Report_Inbreeding_Coefficient_V0_1_0 = CommandToolBuilder(tool="vtools_report_inbreeding_coefficient", base_command=["vtools_report", "inbreeding_coefficient"], inputs=[ToolInput(tag="in_samples", input_type=Boolean(optional=True), prefix="--samples", doc=InputDocumentation(doc="[SAMPLES [SAMPLES ...]]\nConditions based on which samples are selected to have\ninbreeding coefficients calculated. Default to all\nsamples.")), ToolInput(tag="in_maf_field", input_type=String(optional=True), prefix="--maf_field", doc=InputDocumentation(doc="Name of the field that holds minor allele frequency\nfor sample variants, which is the field name for\ncommand 'vtools update table --from_stat\n'maf_field=maf()' --samples ...'.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Output error and warning (0), info (1), debug (2) and\ntrace (3) information to standard output (default to\n1).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Report_Inbreeding_Coefficient_V0_1_0().translate("wdl", allow_empty_container=True)

