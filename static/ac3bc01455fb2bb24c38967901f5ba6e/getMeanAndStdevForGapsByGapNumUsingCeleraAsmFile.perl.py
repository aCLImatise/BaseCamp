from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Getmeanandstdevforgapsbygapnumusingceleraasmfile_Perl_V0_1_0 = CommandToolBuilder(tool="getMeanAndStdevForGapsByGapNumUsingCeleraAsmFile.perl", base_command=["getMeanAndStdevForGapsByGapNumUsingCeleraAsmFile.perl"], inputs=[ToolInput(tag="in_contig_end_seq_file", input_type=File(optional=True), prefix="--contig-end-seq-file", doc=InputDocumentation(doc="; the file that contains the contig end\nsequences to be joined by the gap closer\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getmeanandstdevforgapsbygapnumusingceleraasmfile_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

