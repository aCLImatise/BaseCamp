from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Breadth_Depth_Py_V0_1_0 = CommandToolBuilder(tool="breadth_depth.py", base_command=["breadth_depth.py"], inputs=[ToolInput(tag="in_id_contig_idfocus", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="ID, --contig REFERENCE ID\nFocus on a subset of references in the BAM file. Can\nbe a list of references separated by commas or a FASTA\nfile (the IDs are used to subset)")), ToolInput(tag="in_set_unmapped_fqcfail", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\nfail (FQCFAIL) and duplicate (FDUP) are excluded. If\nunset ALL reads are considered (bedtools genomecov\nstyle). Default: unset")), ToolInput(tag="in_sort_index", input_type=Boolean(optional=True), prefix="--sortindex", doc=InputDocumentation(doc="Sort and index the file")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum Reference Length for a reference to be")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--mincov", doc=InputDocumentation(doc="Minimum position coverage to perform the polymorphism\ncalculation. Position with a lower depth of coverage\nwill be discarded (i.e. considered as zero-coverage\npositions). This is calculated AFTER --minqual.\nDefault: 1")), ToolInput(tag="in_truncate", input_type=Int(optional=True), prefix="--truncate", doc=InputDocumentation(doc="Number of nucleotides that are truncated at either\ncontigs end before calculating coverage values.")), ToolInput(tag="in_combine", input_type=Boolean(optional=True), prefix="--combine", doc=InputDocumentation(doc="Combine all contigs into one giant contig and report\nit at the end\n")), ToolInput(tag="in_considered", input_type=String(), position=0, doc=InputDocumentation(doc="--minqual MINQUAL     Minimum base quality. Bases with quality score lower"))], outputs=[], container="quay.io/biocontainers/cmseq:1.0.2--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Breadth_Depth_Py_V0_1_0().translate("wdl")

