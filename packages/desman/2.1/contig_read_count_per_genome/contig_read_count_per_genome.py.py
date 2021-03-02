from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Contig_Read_Count_Per_Genome_Py_V0_1_0 = CommandToolBuilder(tool="contig_read_count_per_genome.py", base_command=["contig_read_count_per_genome.py"], inputs=[ToolInput(tag="in_max_n_processors", input_type=Int(optional=True), prefix="--max_n_processors", doc=InputDocumentation(doc="Specify the maximum number of processors to use, if\nabsent, all present processors will be used.\n")), ToolInput(tag="in_contig_fa", input_type=String(), position=0, doc=InputDocumentation(doc="Contigs fasta file")), ToolInput(tag="in_re_ffa", input_type=String(), position=1, doc=InputDocumentation(doc="Reference fasta file")), ToolInput(tag="in_bam_files", input_type=String(), position=2, doc=InputDocumentation(doc="BAM files with mappings to contigs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contig_Read_Count_Per_Genome_Py_V0_1_0().translate("wdl", allow_empty_container=True)

