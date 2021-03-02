from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Getmeanandstdevforgapsbygapnumusingceleraterminatordirectory_Perl_V0_1_0 = CommandToolBuilder(tool="getMeanAndStdevForGapsByGapNumUsingCeleraTerminatorDirectory.perl", base_command=["getMeanAndStdevForGapsByGapNumUsingCeleraTerminatorDirectory.perl"], inputs=[ToolInput(tag="in_contig_end_seq_file", input_type=File(optional=True), prefix="--contig-end-seq-file", doc=InputDocumentation(doc="; the file that contains the contig end\nsequences to be joined by the gap closer")), ToolInput(tag="in_reduced_column_output", input_type=Boolean(optional=True), prefix="--reduced-column-output", doc=InputDocumentation(doc=": Output just the gapNum mean and stdev for each gap"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getmeanandstdevforgapsbygapnumusingceleraterminatordirectory_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

