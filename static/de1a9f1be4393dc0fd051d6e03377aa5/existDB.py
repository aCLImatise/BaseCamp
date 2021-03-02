from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Existdb_V0_1_0 = CommandToolBuilder(tool="existDB", base_command=["existDB"], inputs=[ToolInput(tag="in_mer_size", input_type=Int(optional=True), prefix="-mersize", doc=InputDocumentation(doc="-- Use the specified mersize when building existDB tables.")), ToolInput(tag="in_build", input_type=String(optional=True), prefix="-build", doc=InputDocumentation(doc="prefix\n-- Build an existDB on all mers in some.fasta and save\nthe tables into prefix.")), ToolInput(tag="in_describe", input_type=File(optional=True), prefix="-describe", doc=InputDocumentation(doc="-- Reports the state of some existDB file.")), ToolInput(tag="in_test_files", input_type=String(optional=True), prefix="-testfiles", doc=InputDocumentation(doc="prefix\n-- Build an existDB table from some.fasta.  Write that table to disk.\nLoad the table back.  Compare that each mer in some.fasta is present\nin all three existDB tables created earlier.")), ToolInput(tag="in_test_existence", input_type=File(optional=True), prefix="-testexistence", doc=InputDocumentation(doc="-- Build an existDB table from some.fasta, check that every\nmer in some.fasta can be found in the table.  Does not\nguarantee that every mer in the table is found in the file.")), ToolInput(tag="in_test_exhaustive", input_type=String(optional=True), prefix="-testexhaustive", doc=InputDocumentation(doc="some.meryl\n-- Build an existDB table from some.fasta, check _EVERY_ mer\nfor existance.  Complain if a mer exists in the table but\nnot in the meryl database.  Assumes 'some.meryl' is the\nmercount of some.fasta.\n")), ToolInput(tag="in_stuff", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Existdb_V0_1_0().translate("wdl", allow_empty_container=True)

