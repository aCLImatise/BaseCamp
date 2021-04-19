from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Dadaist2_Dada2Fasta_V0_1_0 = CommandToolBuilder(tool="dadaist2_dada2fasta", base_command=["dadaist2-dada2fasta"], inputs=[ToolInput(tag="in_dadaist_two_dada_two_fast_a", input_type=Int(), position=0, doc=InputDocumentation(doc="-i dada2table.tsv -o table.tsv -r repseqs.fasta"))], outputs=[], container="quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Dada2Fasta_V0_1_0().translate("wdl")

