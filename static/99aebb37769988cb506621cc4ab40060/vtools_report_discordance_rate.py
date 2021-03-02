from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Vtools_Report_Discordance_Rate_V0_1_0 = CommandToolBuilder(tool="vtools_report_discordance_rate", base_command=["vtools_report", "discordance_rate"], inputs=[ToolInput(tag="in_samples_dot", input_type=String(optional=True), prefix="--samples.", doc=InputDocumentation(doc="command output a n by n matrix with sample names in the")), ToolInput(tag="in_limiting_variants_samples", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]]\nLimiting variants from samples that match conditions\nthat use columns shown in command 'vtools show sample'\n(e.g. 'aff=1', 'filename like 'MG%'').")), ToolInput(tag="in_variants", input_type=String(optional=True), prefix="--variants", doc=InputDocumentation(doc="Limit variants to specified variant table. Default to\nall variants.")), ToolInput(tag="in_genotypes", input_type=Boolean(optional=True), prefix="--genotypes", doc=InputDocumentation(doc="[GENOTYPES [GENOTYPES ...]]\nLimiting genotypes from samples that match conditions\nthat involves genotype fields (e.g. filter by quality\nscore, with fields shown in command 'vtools show\ngenotypes'). If a variant is filtered for one sample\nbut not another, it will be included if runtime option\n$treat_missing_as_wildtype is set to True, and\ndiscarded otherwise.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Output error and warning (0), info (1), debug (2) and\ntrace (3) information to standard output (default to\n1).\n")), ToolInput(tag="in_samples", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Report_Discordance_Rate_V0_1_0().translate("wdl", allow_empty_container=True)

