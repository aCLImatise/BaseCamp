from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Genome_Blast_V0_1_0 = CommandToolBuilder(tool="rsat_genome_blast", base_command=["rsat", "genome-blast"], inputs=[ToolInput(tag="in_task", input_type=String(optional=True), prefix="-task", doc=InputDocumentation(doc=",blastall")), ToolInput(tag="in_genome_blast", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="[1mINPUT FORMAT[0m")), ToolInput(tag="in_organism_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Although the matching is performed at the protein level, the table")), ToolInput(tag="in_comparison_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_blast_all", input_type=String(), position=0, doc=InputDocumentation(doc="The formatdb step has to be done before running blastall. Note that both")), ToolInput(tag="in_comparisons_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Example: matching all Fungi against all Bacteria genome-blast -qtaxon")), ToolInput(tag="in_default_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-outdir output_directory[0m")), ToolInput(tag="in_blast_dot", input_type=String(), position=0, doc=InputDocumentation(doc="genome-blast -v 1 -q my_org -dbtaxon my_taxon -task blastall\ngenome-blast -v 1 -db my_org -qtaxon my_taxon -task blastall -no_self"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Genome_Blast_V0_1_0().translate("wdl", allow_empty_container=True)

