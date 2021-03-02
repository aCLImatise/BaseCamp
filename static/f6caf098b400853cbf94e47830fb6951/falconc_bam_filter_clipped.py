from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Bam_Filter_Clipped_V0_1_0 = CommandToolBuilder(tool="falconc_bam_filter_clipped", base_command=["falconc", "bam-filter-clipped"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__outputcountfn_string", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --output-count-fn=  string  REQUIRED  file reporting the number of reads\npost filtering")), ToolInput(tag="in_output_fn", input_type=Boolean(optional=True), prefix="--output-fn", doc=InputDocumentation(doc="=             string  REQUIRED  Bam or Sam filename (based on its\nextension)")), ToolInput(tag="in_inputfn_string_required", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --input-fn=         string  REQUIRED  Bam or Sam filename (based on its\nextension), or '-'")), ToolInput(tag="in_maxclipping_int_maximum", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="=, --max-clipping=     int     100       Maximum clipping on left or right\nof query, in basepairs")), ToolInput(tag="in__endmargin_margin", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="=, --end-margin=       int     25        Maximum margin on contig ends, in")), ToolInput(tag="in_base_pairs", input_type=String(), position=0, doc=InputDocumentation(doc="-F=, --Flags-exclude=    string  '0'       Integer (0x ok) of flags to")), ToolInput(tag="in_filters", input_type=String(), position=0, doc=InputDocumentation(doc="-v, --verbose            bool    false     Show each skipped alignment, and a")), ToolInput(tag="in_count_dot", input_type=String(), position=1, doc=InputDocumentation(doc="-t, --tags-enrich        bool    false     Also enrich the tags. (See"))], outputs=[], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Bam_Filter_Clipped_V0_1_0().translate("wdl")

