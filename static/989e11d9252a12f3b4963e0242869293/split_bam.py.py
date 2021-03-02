from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Split_Bam_Py_V0_1_0 = CommandToolBuilder(tool="split_bam.py", base_command=["split_bam.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format. BAM file should\nbe sorted and indexed.")), ToolInput(tag="in_gene_list", input_type=File(optional=True), prefix="--genelist", doc=InputDocumentation(doc="Gene list in bed foramt. All reads hits to exon\nregions (defined by this gene list) will be saved into\none BAM file, the remaining reads will saved into\nanother BAM file.")), ToolInput(tag="in_out_prefix", input_type=File(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output BAM files. 'prefix.in.bam' file\ncontains reads mapped to the gene list specified by\n'-r', 'prefix.ex.bam' contains reads that cannot\nmapped to gene list. 'prefix.junk.bam' contains\nqcfailed or unmapped reads.\n"))], outputs=[ToolOutput(tag="out_out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix of output BAM files. 'prefix.in.bam' file\ncontains reads mapped to the gene list specified by\n'-r', 'prefix.ex.bam' contains reads that cannot\nmapped to gene list. 'prefix.junk.bam' contains\nqcfailed or unmapped reads.\n"))], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Bam_Py_V0_1_0().translate("wdl")

