from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Bam_Filter_Ipa_V0_1_0 = CommandToolBuilder(tool="falconc_bam_filter_ipa", base_command=["falconc", "bam-filter-ipa"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__bamsfofn_string", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --bams-fofn=             string  REQUIRED  set bams_fofn")), ToolInput(tag="in__allsubreadnamesfn_string", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="=, --all-subread-names-fn=  string  ''        set all_subread_names_fn")), ToolInput(tag="in__minlen_int", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="=, --min-len=               int     -1        set min_len")), ToolInput(tag="in_min_frac", input_type=Boolean(optional=True), prefix="--min-frac", doc=InputDocumentation(doc="=                   float   0.7       set min_frac")), ToolInput(tag="in_bam_filter_ipa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Bam_Filter_Ipa_V0_1_0().translate("wdl")

