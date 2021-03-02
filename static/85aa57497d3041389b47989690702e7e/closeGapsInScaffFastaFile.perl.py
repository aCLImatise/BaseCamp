from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Closegapsinscafffastafile_Perl_V0_1_0 = CommandToolBuilder(tool="closeGapsInScaffFastaFile.perl", base_command=["closeGapsInScaffFastaFile.perl"], inputs=[ToolInput(tag="in_scaffold_fast_a_file", input_type=File(optional=True), prefix="--scaffold-fasta-file", doc=InputDocumentation(doc=": file containing the scaffold sequences"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Closegapsinscafffastafile_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

