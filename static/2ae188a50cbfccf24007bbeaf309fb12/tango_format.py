from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, Directory, String

Tango_Format_V0_1_0 = CommandToolBuilder(tool="tango_format", base_command=["tango", "format"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite of existing reformatted fastafile")), ToolInput(tag="in_force_id_map", input_type=Boolean(optional=True), prefix="--forceidmap", doc=InputDocumentation(doc="Force overwrite of existing accession2taxid mapfile")), ToolInput(tag="in_taxid_map", input_type=File(optional=True), prefix="--taxidmap", doc=InputDocumentation(doc="Protein accession to taxid mapfile. For UniRef this\nfile is created from information in the fasta headers\nand stored in a file named prot.accession2taxid.gz in\nthe same directory as the reformatted fasta file.\nSpecify another path here.")), ToolInput(tag="in_max_idle_n", input_type=Int(optional=True), prefix="--maxidlen", doc=InputDocumentation(doc="Maximum allowed length of sequence ids. Defaults to 14\n(required by diamond for adding taxonomy info to\ndatabase). Ids longer than this are written to a file\nwith the original id")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="Temporary directory for writing fasta files")), ToolInput(tag="in_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc="Specify protein fasta to reformat")), ToolInput(tag="in_reformatted", input_type=String(), position=1, doc=InputDocumentation(doc="Path to reformatted fastafile"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tango_Format_V0_1_0().translate("wdl", allow_empty_container=True)

