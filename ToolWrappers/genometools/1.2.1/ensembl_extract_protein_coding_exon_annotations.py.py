from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Ensembl_Extract_Protein_Coding_Exon_Annotations_Py_V0_1_0 = CommandToolBuilder(tool="ensembl_extract_protein_coding_exon_annotations.py", base_command=["ensembl_extract_protein_coding_exon_annotations.py"], inputs=[ToolInput(tag="in_annotation_file", input_type=File(optional=True), prefix="--annotation-file", doc=InputDocumentation(doc="Path of Ensembl gene annotation file (in GTF format). The file\nmay be gzip'ed. If set to ``-``, read from ``stdin``.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Path of output file. If set to ``-``, print to ``stdout``,\nand redirect logging messages to ``stderr``.")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="Species for which to extract genes. (This parameter is ignored\nif ``--chromosome-pattern`` is specified.)")), ToolInput(tag="in_chromosome_pattern", input_type=String(optional=True), prefix="--chromosome-pattern", doc=InputDocumentation(doc="Regular expression that chromosome names have to match.\nIf not specified, determine pattern based on\n``--species``.")), ToolInput(tag="in_field_name", input_type=File(optional=True), prefix="--field-name", doc=InputDocumentation(doc="Rows in the GTF file that do not contain this value\nin the third column are ignored.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Path of log file (if specified, report to stdout AND file.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Only output errors and warnings.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output. Ignored if --quiet is specified."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path of output file. If set to ``-``, print to ``stdout``,\nand redirect logging messages to ``stderr``."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ensembl_Extract_Protein_Coding_Exon_Annotations_Py_V0_1_0().translate("wdl", allow_empty_container=True)

