from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Align2Hints_Pl_V0_1_0 = CommandToolBuilder(tool="align2hints.pl", base_command=["align2hints.pl"], inputs=[ToolInput(tag="in_skip_alignment_out", input_type=Boolean(optional=True), prefix="-skipalignmentout", doc=InputDocumentation(doc="... -o gthfile")), ToolInput(tag="in_prg", input_type=String(optional=True), prefix="--prg", doc=InputDocumentation(doc="|exonerate|spaln|scipio")), ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="--in", doc=InputDocumentation(doc="input file from gth (gff3), spaln (gff3) or exonerate")), ToolInput(tag="in_cds_part_cut_off", input_type=Int(optional=True), prefix="--CDSpart_cutoff", doc=InputDocumentation(doc="This many bp are cut off of each CDSpart hint\nw.r.t. the cds (default 15).")), ToolInput(tag="in_max_intron_len", input_type=Int(optional=True), prefix="--maxintronlen", doc=InputDocumentation(doc="Alignments with longer gaps are discarded\n(default 350000).")), ToolInput(tag="in_min_intron_len", input_type=Int(optional=True), prefix="--minintronlen", doc=InputDocumentation(doc="Alignments with gaps shorter than this and longer\nthan maxgaplen are discarded (default 41).")), ToolInput(tag="in_priority", input_type=Int(optional=True), prefix="--priority", doc=InputDocumentation(doc="Priority of hint group (default 4).")), ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="Source identifier (default 'P')")), ToolInput(tag="in_cds", input_type=Boolean(optional=True), prefix="--CDS", doc=InputDocumentation(doc="Do not output CDSpart hints, but complete CDS")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="--out                contains CDSpart, CDS and intron hints")), ToolInput(tag="in_hints_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--genome_file=s          if prg is exonerate and start hints shall be"))], outputs=[], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Align2Hints_Pl_V0_1_0().translate("wdl")

