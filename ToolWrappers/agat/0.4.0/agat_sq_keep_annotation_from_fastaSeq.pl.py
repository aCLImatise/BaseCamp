from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Agat_Sq_Keep_Annotation_From_Fastaseq_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sq_keep_annotation_from_fastaSeq.pl", base_command=["agat_sq_keep_annotation_from_fastaSeq.pl"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="STRING: Input GTF/GFF file.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="STRING: fasta file.")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="For verbosity")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format.")), ToolInput(tag="in_agat_sq_keep_annotation_from_fast_as_eq_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:")), ToolInput(tag="in_sensitive_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Usage:\nagat_sq_keep_annotation_from_fastaSeq.pl --gff <gff_file.gff> --fasta <fasta_file.fa> [-o <output file>]\nagat_sq_keep_annotation_from_fastaSeq.pl --help"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sq_Keep_Annotation_From_Fastaseq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

