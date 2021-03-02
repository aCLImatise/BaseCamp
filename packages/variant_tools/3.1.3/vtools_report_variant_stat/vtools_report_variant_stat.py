from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vtools_Report_Variant_Stat_V0_1_0 = CommandToolBuilder(tool="vtools_report_variant_stat", base_command=["vtools_report", "variant_stat"], inputs=[ToolInput(tag="in_limiting_variants_samples", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]]\nLimiting variants from samples that match conditions\nthat use columns shown in command 'vtools show sample'\n(e.g. 'aff=1', 'filename like 'MG%''). If this\nparameter is specified without a value, variants\nbelonging to any of the samples will be counted. If\nthis parameter is left unspecified, all variants,\nincluding those that do not belong to any samples will\nbe counted.")), ToolInput(tag="in_group_samples_certain", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[GROUP_BY [GROUP_BY ...]], --group_by [GROUP_BY [GROUP_BY ...]], --group-by [GROUP_BY [GROUP_BY ...]]\nGroup samples by certain conditions such as 'aff=1'. A\ncommon usage is to group variants by 'filename' and\n'sample_name' so that variant statistics are outputted\nfor each sample.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Output error and warning (0), info (1), debug (2) and\ntrace (3) information to standard output (default to\n1).\n")), ToolInput(tag="in_calculated_dot", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Report_Variant_Stat_V0_1_0().translate("wdl", allow_empty_container=True)

