from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Float, Boolean

Rnazblast_Pl_V0_1_0 = CommandToolBuilder(tool="rnazBlast.pl", base_command=["rnazBlast.pl"], inputs=[ToolInput(tag="in_blast_dir", input_type=Directory(optional=True), prefix="--blast-dir", doc=InputDocumentation(doc="The directory with your BLAST database. If not set, the value\nfrom the 'BLASTDB' environment variable is used.")), ToolInput(tag="in_database", input_type=Directory(optional=True), prefix="--database", doc=InputDocumentation(doc="Name of the BLAST database to compare with. Must exist in the\ndirectory set with '--blast-dir' or in the directory set by\n'BLASTDB'.")), ToolInput(tag="in_seq_dir", input_type=File(optional=True), prefix="--seq-dir", doc=InputDocumentation(doc="Directory with sequence files. For each sequence identifier in\nyour input file you need to have a corresponding FASTA formatted\nfile. The files should be named with the sequence identifier and\nthe extension '.fa' or '.fasta'. If your identifier in your\ninput file is for example 'contig100' then you should have a\nfile named 'contig100.fa'. (If your identifier is of the form\n``assembly.chromosome' as for example used by UCSC alignments,\nit is also possible to name the file 'chr22.fa' for a sequence\nidentifier 'hg17.chr22').")), ToolInput(tag="in_e_value", input_type=Float(optional=True), prefix="--e-value", doc=InputDocumentation(doc="E-value cutoff. All hits with E < X are reported. (Default:\n1e-06)")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazblast_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

