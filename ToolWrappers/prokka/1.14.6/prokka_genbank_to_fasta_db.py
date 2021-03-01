from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Prokka_Genbank_To_Fasta_Db_V0_1_0 = CommandToolBuilder(tool="prokka_genbank_to_fasta_db", base_command=["prokka-genbank_to_fasta_db"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="!      Verbose progress (default '0').")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input format (default 'genbank').")), ToolInput(tag="in_id_tag", input_type=String(optional=True), prefix="--idtag", doc=InputDocumentation(doc="What tag to use as Fasta ID (default = try first of: protein_id locus_tag db_xref) (default '').")), ToolInput(tag="in_sep", input_type=String(optional=True), prefix="--sep", doc=InputDocumentation(doc="Separator between EC/gene/product (default '~~~').")), ToolInput(tag="in_blank", input_type=String(optional=True), prefix="--blank", doc=InputDocumentation(doc="Replace empty EC/gene/product with this (default '').")), ToolInput(tag="in_pseudo", input_type=Boolean(optional=True), prefix="--pseudo", doc=InputDocumentation(doc="!       Include /pseudo genes (default '0').")), ToolInput(tag="in_hypo", input_type=Boolean(optional=True), prefix="--hypo", doc=InputDocumentation(doc="!         Include 'hypothetical protein' genes (default '0').")), ToolInput(tag="in_g_code", input_type=Int(optional=True), prefix="--gcode", doc=InputDocumentation(doc="Force this genetic code for translation (otherwise /transl_table) (default '0').")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum peptide length (default '0')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prokka_Genbank_To_Fasta_Db_V0_1_0().translate("wdl", allow_empty_container=True)

