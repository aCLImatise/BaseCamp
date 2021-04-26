from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Agat_Sp_Clipn_Seqextremities_And_Fixcoordinates_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_clipN_seqExtremities_and_fixCoordinates.pl", base_command=["agat_sp_clipN_seqExtremities_and_fixCoordinates.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Input fasta file.")), ToolInput(tag="in_of", input_type=File(optional=True), prefix="--of", doc=InputDocumentation(doc="Output fixed fasta file. If no output file is specified, the\noutput will be written to STDOUT.")), ToolInput(tag="in_og", input_type=File(optional=True), prefix="--og", doc=InputDocumentation(doc="Output fixed GFF file. If no output file is specified, the\noutput will be written to STDOUT")), ToolInput(tag="in_agat_sp_clip_n_seq_extremities_and_fix_coordinates_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:")), ToolInput(tag="in_consistent", input_type=String(), position=0, doc=InputDocumentation(doc="Usage:\nagat_sp_clipN_seqExtremities_and_fixCoordinates.pl -g infile.gff -f infile.fasta  [ -o outfile ]\nagat_sp_clipN_seqExtremities_and_fixCoordinates.pl --help"))], outputs=[ToolOutput(tag="out_of", output_type=File(optional=True), selector=InputSelector(input_to_select="in_of", type_hint=File()), doc=OutputDocumentation(doc="Output fixed fasta file. If no output file is specified, the\noutput will be written to STDOUT.")), ToolOutput(tag="out_og", output_type=File(optional=True), selector=InputSelector(input_to_select="in_og", type_hint=File()), doc=OutputDocumentation(doc="Output fixed GFF file. If no output file is specified, the\noutput will be written to STDOUT"))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Clipn_Seqextremities_And_Fixcoordinates_Pl_V0_1_0().translate("wdl")

