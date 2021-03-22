from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Phylocsf___Annotate_With_Mmseqs_V0_1_0 = CommandToolBuilder(tool="phylocsf++_annotate_with_mmseqs", base_command=["phylocsf++", "annotate-with-mmseqs"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Parallelize scoring of multiple MSAs in a file. Default: 2")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path where output GFF/GTF will be written to. If it does not\nexist, it will be created. Default: output files are stored\nnext to the input files.")), ToolInput(tag="in_strategy", input_type=String(optional=True), prefix="--strategy", doc=InputDocumentation(doc="PhyloCSF scoring algorithm: MLE, FIXED, OMEGA or FIXED_MEAN.\nDefault: MLE")), ToolInput(tag="in_mm_seqs_bin", input_type=File(optional=True), prefix="--mmseqs-bin", doc=InputDocumentation(doc="Path to MMseqs2 binary. Default: mmseqs")), ToolInput(tag="in_genome_length", input_type=Int(optional=True), prefix="--genome-length", doc=InputDocumentation(doc="Total genome length (needed for --strategy FIXED_MEAN).")), ToolInput(tag="in_coding_exons", input_type=File(optional=True), prefix="--coding-exons", doc=InputDocumentation(doc="BED-like file (chrom name, strand, phase, start, end) with\ncoordinates of coding exons (needed for --strategy\nFIXED_MEAN).")), ToolInput(tag="in_mapping", input_type=File(optional=True), prefix="--mapping", doc=InputDocumentation(doc="If the MSAs don't use common species names (like Human,\nChimp, etc.) you can pass a two-column tsv file with a name\nmapping.")), ToolInput(tag="in_model_info", input_type=Int(optional=True), prefix="--model-info", doc=InputDocumentation(doc="Output the organisms included in a specific model. Included\nmodels are: 21mosquitoes, 58mammals, 7yeast, 29mammals,\n53birds, 49birds, 100vertebrates, 23flies, 12flies, 26worms,\n20flies.\n")), ToolInput(tag="in_phylo_csf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/phylocsfpp:1.0.0_f5ab2559--hdd86bf5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylocsf___Annotate_With_Mmseqs_V0_1_0().translate("wdl")

