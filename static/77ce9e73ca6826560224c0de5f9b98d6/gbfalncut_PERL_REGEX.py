from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Gbfalncut_Perl_Regex_V0_1_0 = CommandToolBuilder(tool="gbfalncut_PERL_REGEX", base_command=["gbfalncut", "PERL-REGEX"], inputs=[ToolInput(tag="in_gbf_aln_cut", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genbank_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_perl_regex", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/perl-fast:1.06--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gbfalncut_Perl_Regex_V0_1_0().translate("wdl")

