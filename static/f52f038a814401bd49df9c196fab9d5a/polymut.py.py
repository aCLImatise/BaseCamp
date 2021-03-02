from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, Float, String

Polymut_Py_V0_1_0 = CommandToolBuilder(tool="polymut.py", base_command=["polymut.py"], inputs=[ToolInput(tag="in_id_contig_idfocus", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="ID, --contig REFERENCE ID\nFocus on a subset of references in the BAM file. Can\nbe a list of references separated by commas or a FASTA\nfile (the IDs are used to subset)")), ToolInput(tag="in_set_unmapped_fqcfail", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\nfail (FQCFAIL) and duplicate (FDUP) are excluded. If\nunset ALL reads are considered (bedtools genomecov\nstyle). Default: unset")), ToolInput(tag="in_sort_index", input_type=Boolean(optional=True), prefix="--sortindex", doc=InputDocumentation(doc="Sort and index the file")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum Reference Length for a reference to be\nconsidered. Default: 0")), ToolInput(tag="in_min_qual", input_type=Int(optional=True), prefix="--minqual", doc=InputDocumentation(doc="Minimum base quality. Bases with quality score lower\nthan this will be discarded. This is performed BEFORE\n--mincov. Default: 30")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--mincov", doc=InputDocumentation(doc="Minimum position coverage to perform the polymorphism\ncalculation. Position with a lower depth of coverage\nwill be discarded (i.e. considered as zero-coverage\npositions). This is calculated AFTER --minqual.\nDefault:1")), ToolInput(tag="in_dominant_frq_thr_sh", input_type=Float(optional=True), prefix="--dominant_frq_thrsh", doc=InputDocumentation(doc="Cutoff for degree of `allele dominance` for a position\nto be considered polymorphic. Default: 0.8")), ToolInput(tag="in_gff_file", input_type=File(optional=True), prefix="--gff_file", doc=InputDocumentation(doc="GFF file used to extract protein-coding genes")), ToolInput(tag="in_id", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cmseq:1.0.2--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Polymut_Py_V0_1_0().translate("wdl")

