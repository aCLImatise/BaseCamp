from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Protmapper_V0_1_0 = CommandToolBuilder(tool="protmapper", base_command=["protmapper"], inputs=[ToolInput(tag="in_peptide", input_type=Boolean(optional=True), prefix="--peptide", doc=InputDocumentation(doc="If given, the third element of each row of the input\nfile is a peptide (amino acid sequence) rather than a\nsingle amino acid residue. In this case, peptide-\noriented mappings are applied. In this mode the\nfollowing boolean arguments are ignored.")), ToolInput(tag="in_no_methionine_offset", input_type=Boolean(optional=True), prefix="--no_methionine_offset", doc=InputDocumentation(doc="If given, will not check for off-by-one errors in site\nposition (possibly) attributable to site numbering\nfrom mature proteins after cleavage of the initial\nmethionine.")), ToolInput(tag="in_no_orthology_mapping", input_type=Boolean(optional=True), prefix="--no_orthology_mapping", doc=InputDocumentation(doc="If given, will not check sequence positions for known\nmodification sites in mouse or rat sequences (based on\nPhosphoSitePlus data).")), ToolInput(tag="in_no_isoform_mapping", input_type=Boolean(optional=True), prefix="--no_isoform_mapping", doc=InputDocumentation(doc="If given, will not check sequence positions for known\nmodifications in other human isoforms of the protein\n(based on PhosphoSitePlus data).\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Path to an input file. The input file is a text file\nin which each row consists of four comma separated\nvalues, with the first element being a protein ID, the\nsecond, the namespace in which that ID is valid\n(uniprot or hgnc),third, an amino acid represented as\na single capital letter, and fourth, a site position\non the protein.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Path to the output file to be generated. Each line of\nthe output file corresponds to a line in the input\nfile. Each linerepresents a mapped site produced by\nProtmapper."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protmapper_V0_1_0().translate("wdl", allow_empty_container=True)

