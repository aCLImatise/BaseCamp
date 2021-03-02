from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Generate_Genes_Gff_Py_V0_1_0 = CommandToolBuilder(tool="generate_genes_gff.py", base_command=["generate_genes_gff.py"], inputs=[ToolInput(tag="in_bc_chr_list", input_type=File(optional=True), prefix="--BC_chrlist", doc=InputDocumentation(doc="A comma separated dictionary of chromosome names from\nthe BioCyc name to the bam name. See the names of\nchromosomes in bam file using samtools view -H\nfoo.bam.\n")), ToolInput(tag="in_bc_dir", input_type=String(), position=0, doc=InputDocumentation(doc="BioCyc flat-files directory."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Genes_Gff_Py_V0_1_0().translate("wdl", allow_empty_container=True)

